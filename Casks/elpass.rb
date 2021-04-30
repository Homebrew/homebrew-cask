cask "elpass" do
  version "1.3.3,346"
  sha256 "f5d1c8578bd28d217f0f179d88ae91b8ea8d4a34efa134ace9ec76e2f69e7648"

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  livecheck do
    url "https://elpass.app/macos/appcast.xml"
    strategy :sparkle
  end

  app "Elpass.app"
end
