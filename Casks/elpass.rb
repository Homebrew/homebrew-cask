cask "elpass" do
  version "1.3.2,340"
  sha256 "f927c1219475a44183d8eb9d8019238df87f430f6381a84bb2bbb2c29f8becbf"

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
