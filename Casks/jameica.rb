# typed: false
# frozen_string_literal: true

cask "jameica" do
  version "2.10.0"
  sha256 "f6b95ec1120ce6cc2af3619f2abd142305950e698d4366571aec578248c8d89c"

  url "https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64-#{version}.zip"
  name "Jameica"
  homepage "https://www.willuhn.de/products/jameica/"

  livecheck do
    url "https://www.willuhn.de/products/jameica/download.php"
    strategy :page_match
    regex(%r{href=.*?/jameica-macos64-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "jameica.app"
end
