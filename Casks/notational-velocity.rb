cask "notational-velocity" do
  version "2.0b5,8"
  sha256 :no_check

  url "http://notational.net/NotationalVelocity.zip"
  name "Notational Velocity"
  homepage "http://notational.net/"

  livecheck do
    url "http://notational.net/nvupdates.xml"
    strategy :sparkle do |item|
      "#{item.short_version.sub("β", "b")},#{item.version}"
    end
  end

  app "Notational Velocity.app"
end
