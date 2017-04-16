class IntellijIdeaCeBundledJdk < Cask
  version "14"
  sha256 "09bb078252e2f6af6b58605ad3a380a71c8cc53f8e697e31fe03fcadb2152b07"

  url "http://download.jetbrains.com/idea/ideaIC-#{version}-jdk-bundled.dmg"
  homepage "https://www.jetbrains.com/idea/"
  license :oss

  app "IntelliJ IDEA #{version} CE.app"
  
  zap :delete => [
                  "~/Library/Application Support/IdeaIC#{version}",
                  "~/Library/Preferences/IdeaIC#{version}",
                  "~/Library/Caches/IdeaIC#{version}",
                  "~/Library/Logs/IdeaIC#{version}",
                 ]
end
