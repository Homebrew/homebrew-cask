cask "anonym" do
  version "2.3"
  sha256 "696ac1cf173976b26e2fdd8f8f087df16437e237cf271fae6dcbcc403148a0d4"

  url "https://www.hanynet.com/anonym-#{version}.zip"
  name "Anonym"
  desc "Network access anonymiser"
  homepage "https://www.hanynet.com/anonym/"

  disable! date: "2024-07-09", because: "is 32-bit only"

  app "Anonym.app"
end
