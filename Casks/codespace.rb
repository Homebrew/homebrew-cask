cask "codespace" do
  version "1.5.0"
  sha256 :no_check

  url "https://codespace.app/download/latest"
  name "Codespace"
  homepage "https://codespace.app/"

  livecheck do
    url "https://codespace.app/download/latest"
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "Codespace.app"
end
