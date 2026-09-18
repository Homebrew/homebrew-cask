cask "ginote" do
  version "0.1.81"
  sha256 "5d03204bf57cfa74661afe1e6767abac8be5a7eb97e87e1ef42343c2f08dcf3e"

  url "https://github.com/zidell/ginote/releases/download/v#{version}/Ginote_#{version}_universal.dmg"
  name "Ginote"
  desc "Serverless notes app backed by GitHub Issues"
  homepage "https://note.gitools.net/"

  livecheck do
    url :stable
    strategy :github_latest
  end

  app "Ginote.app"

  zap trash: [
    "~/Library/Application Support/net.gitools.note",
    "~/Library/Caches/net.gitools.note",
    "~/Library/Saved Application State/net.gitools.note.savedState",
  ]
end
