cask "intellij-idea" do
  arch arm: "-aarch64"

  version "2026.1.3,261.25134.95"
  sha256 arm:   "2d1ca0d832e64e00a1745291f0d3061a35836530169e3429a13a7734806f62b2",
         intel: "4afe80dfb639c8891a13eaa714418306afeaf5f4924993e3242e7d341d85b27b"

  url "https://download.jetbrains.com/idea/ideaIU-#{version.csv.first}#{arch}.dmg"
  name "IntelliJ IDEA Ultimate"
  desc "Java IDE by JetBrains"
  homepage "https://www.jetbrains.com/idea/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIU&latest=true&type=release"
    strategy :json do |json|
      json["IIU"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  conflicts_with cask: "intellij-idea@eap"
  depends_on :macos

  app "IntelliJ IDEA.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/idea.wrapper.sh"
  binary shimscript, target: "idea"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      open -na "IntelliJ IDEA.app" --args "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Caches/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Logs/JetBrains/IntelliJIdea#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.intellij.plist",
    "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
    "~/Library/Preferences/jetbrains.idea.*.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.savedState",
  ]
end
