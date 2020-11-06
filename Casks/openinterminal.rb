cask "openinterminal" do
  version "2.2.3"
  sha256 "192a01d0d7978175f99ff438e2cc2db9b3959700d8ef4f8f71af21c42e323ac0"

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast "https://github.com/Ji4n1ng/OpenInTerminal/releases.atom"
  name "OpenInTerminal"
  homepage "https://github.com/Ji4n1ng/OpenInTerminal"

  depends_on macos: ">= :sierra"

  app "OpenInTerminal.app"
end
