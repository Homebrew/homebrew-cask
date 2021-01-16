cask "sleek" do
  version "0.8.0"
  sha256 "56cb4f289a65456ea42986272ad4ef6ebe07eadd05216518ac727e4639223c10"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}.dmg"
  appcast "https://github.com/ransome1/sleek/releases.atom"
  name "sleek"
  desc "Todo app based on todo.txt, free and open-source"
  homepage "https://github.com/ransome1/sleek"

  app "sleek.app"

  zap trash: "~/Library/Application Support/sleek"
end
