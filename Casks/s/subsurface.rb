cask "subsurface" do
  version "6.0.5214"
  sha256 "d40aa79ec9bcc1c4b601bd76b1a49b22a207989901637add55963a8c865e306d"

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}-CICD-release.dmg",
      user_agent: :fake
  name "Subsurface"
  desc "Open source divelog program"
  homepage "https://subsurface-divelog.org/"

  livecheck do
    url "https://subsurface-divelog.org/current-release/"
    regex(/href=.*?Subsurface[._-]v?(\d+(?:\.\d+)+)[._-]CICD[._-]release\.dmg/i)
  end

  app "Subsurface.app"

  zap trash: [
    "~/Library/Application Support/Subsurface",
    "~/Library/Caches/Subsurface",
    "~/Library/Preferences/org.hohndel.subsurface.Subsurface.plist",
  ]
end
