cask "sleek" do
  version "1.0.8"
  sha256 "b5498XsLWzstpDAH8SPwmdxnuAfgitZawxs2BpUBr8njDp3SNrDoFx"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac.dmg"
  appcast "https://github.com/ransome1/sleek/releases.atom"
  name "sleek"
  desc "Todo app based on todo.txt for Linux, Windows and MacOS, free and open-source"
  homepage "https://github.com/ransome1/sleek"

  app "sleek.app"

  zap trash: "~/Library/Application Support/sleek"
end
