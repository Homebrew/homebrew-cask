cask "intellij-idea-ce" do
  arch arm: "-aarch64"

  version "2025.1.4.1,251.27812.49"
  sha256 arm:   "656f9fb857afbfc56494b005fad390f1c4cb69deb911cc0ffcf5bb94c52e2f94",
         intel: "c4adb3c4cac8ff7ae1f86898c73f4946410af849df056e6dc05e8e9fc2943c49"

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
  depends_on macos: ">= :high_sierra"

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
