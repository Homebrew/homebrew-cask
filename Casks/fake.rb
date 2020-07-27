cask "fake" do
  version "1.9.1"
  sha256 "eb4f02a3b5dea2cab679c1366f454a22d8bb4bbfa448c56c0ca00bb615d8867e"

  url "http://fakeapp.com/dist/Fake_#{version}.zip"
  appcast "http://fakeapp.com/appcast/fake.rss"
  name "Fake"
  homepage "http://fakeapp.com/"

  app "Fake.app"
end
