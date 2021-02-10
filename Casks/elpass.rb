cask "elpass" do
  version "1.3.1,338"
  sha256 "6e7160fb4e8129ddee4619c0c7fe754bb98cd781288f71fac4d6123da7e24ac9"

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
