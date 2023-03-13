cask "imo" do
  version "1.2.1"
  sha256 "bfd2d5c09af58a2c0b68a09f6c49165ab9ad4ce8d86546ea16afe6f8d9fad8c6"

  url "https://static-web.imoim.net/as/indigo-static/macos/#{version}/Imo.dmg",
      verified: "static-web.imoim.net/as/indigo-static/macos/"
  name "Imo Messanger"
  desc "Video calls and chat"
  homepage "https://imo.im/"

  app "Imo.app"

  caveats do
    discontinued
    <<~EOS
      Newer version is only available in Mac App Store.
    EOS
  end
end
