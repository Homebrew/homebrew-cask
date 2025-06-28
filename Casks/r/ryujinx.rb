cask "ryujinx" do
  version "1.3.2"
  sha256 "c157907318348999ce4fb8c8fe8ddd511f0ddea643f22b1529527390180cb700"

  url "https://git.ryujinx.app/api/v4/projects/1/packages/generic/Ryubing/#{version}/ryujinx-#{version}-macos_universal.app.tar.gz"
  name "Ryujinx"
  desc "Nintendo Switch emulator"
  homepage "https://ryujinx.org/"

  # Extrai o .app do tar.gz e instala na /Applications
  app "Ryujinx.app"

  # Dependências opcionais, se precisar
  # depends_on macos: ">= :mojave"

  # Você pode definir um uninstall zap, se quiser remover arquivos extras
end
