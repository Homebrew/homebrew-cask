cask "intellij-idea-ce" do
  arch arm: "-aarch64"

  version "2025.2.3,252.26830.84"
  sha256 arm:   "bfee440c818c1ae59f35da858387a7d8fea7b677df157d2c2b29d061328979e2",
         intel: "aa7552de772595734f54c0d9fe69dbcba3243d2ae9b05385cad7d488cdc6d9fe"

  url "https://download.jetbrains.com/idea/ideaIC-#{version.csv.first}#{arch}.dmg"
  name "IntelliJ IDEA Community Edition"
  name "IntelliJ IDEA CE"
  desc "IDE for Java development - community edition"
  homepage "https://www.jetbrains.com/idea/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release"
    strategy :json do |json|
      json["IIC"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

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
