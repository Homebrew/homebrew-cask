cask "machg" do
  version "1.0.2"
  sha256 "af15173111c1d350ba5b62edf6fe5ab3a186cc8bdb6302455c4fb04f2a809305"

  url "https://jasonfharris.com/machg/downloads/assets/MacHg#{version}.zip"
  name "MacHg"
  desc "GUI for the Mercurial distributed revision control system"
  homepage "https://jasonfharris.com/machg/"

  deprecate! date: "2024-10-12", because: :unmaintained
  disable! date: "2025-10-12", because: :unmaintained

  app "MacHg.app"

  caveats do
    requires_rosetta
  end
end
