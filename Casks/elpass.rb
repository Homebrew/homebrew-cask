cask "elpass" do
  version "1.3.4,353"
  sha256 "a0ec6dd27f93b1e264bbcfb4601754d4cb787bffde02e99cd34bc62d213a7ef4"

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
