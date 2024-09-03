cask "picocrypt" do
    version "1.42"
    sha256 "5ec450c0360cd69a926610d90ed5245f3e945cd95c407576ec08e1c38bd7d0d2"
  
    url "https://github.com/Picocrypt/Picocrypt/releases/download/#{version}/Picocrypt.dmg"
    name "Picocrypt"
    desc "A very small, very simple, yet very secure encryption tool."
    homepage "https://github.com/Picocrypt/Picocrypt"
  
    livecheck do
      url :url
      strategy :github_latest
    end
  
    app "Picocrypt.app"
  
    zap trash: [
      "~/Library/Preferences/com.evansu.picocrypt.plist",
      "~/Library/Saved Application State/com.evansu.picocrypt.savedState"
    ]
  end