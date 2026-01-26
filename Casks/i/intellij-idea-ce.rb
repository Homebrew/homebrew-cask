cask "intellij-idea-ce" do
  arch arm: "-aarch64"

  version "2025.2.5,252.28238.7"
  sha256 arm:   "52065492d433f0ea9df4debd5f0683154ab4dab5846394cabc8a49903d70e5bc",
         intel: "ff48a1e60869342a91db867fa482a49d4cdf38476496911c109f34a7e8d6523d"

  url "https://download.jetbrains.com/idea/ideaIC-#{version.csv.first}#{arch}.dmg"
  name "IntelliJ IDEA Community Edition"
  name "IntelliJ IDEA CE"
  desc "IDE for Java development - community edition"
  homepage "https://www.jetbrains.com/idea/"

  # https://blog.jetbrains.com/idea/2025/12/intellij-idea-unified-release/
  deprecate! date: "2025-12-08", because: :discontinued, replacement_cask: "intellij-idea"

  auto_updates true

  app "IntelliJ IDEA CE.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/idea.wrapper.sh"
  binary shimscript, target: "idea-ce"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/IntelliJ IDEA CE.app/Contents/MacOS/idea' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Caches/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Logs/JetBrains/IdeaIC#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.intellij.ce.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState",
  ]
end
