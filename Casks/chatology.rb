cask "chatology" do
  version "1.2.4"
  sha256 "e5ad4c9716afb2b5c1ac56f5b103ff8b8919de0cdda0627abd141c07368df7ad"

  # d60ism0l33mmr.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d60ism0l33mmr.cloudfront.net/Chatology_#{version}.zip"
  appcast "https://flexibits.com/chatology/appcast.php"
  name "Chatology"
  desc "Chat manager and message search software"
  homepage "https://flexibits.com/chatology"

  app "Chatology.app"
end
