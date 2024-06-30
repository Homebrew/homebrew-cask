cask "airpass" do
  version "1.0.2"
  sha256 "a67b569a86cc3cfe0d219a5f5c450a94d7060474c0a36b14329140af772f7db2"

  url "https://github.com/alvesjtiago/airpass/releases/download/#{version}/airpass-#{version}-x64.dmg",
      verified: "github.com/alvesjtiago/airpass/"
  name "Airpass"
  desc "Status bar app to overcome time-constrained WiFi networks"
  homepage "https://airpass.tiagoalves.me/"

  app "Airpass.app"

  caveats do
    requires_rosetta
  end
end
