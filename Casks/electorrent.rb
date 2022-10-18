cask "electorrent" do
  version "2.8.1"
  sha256 "c9cb9726a72e6ed6b7fab9d08d73ab44564bd262663139ce76dc4ca7406bac61"

  url "https://github.com/tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  name "Electorrent"
  desc "Desktop remote torrenting application"
  homepage "https://github.com/tympanix/Electorrent"

  auto_updates true

  app "Electorrent.app"
end
