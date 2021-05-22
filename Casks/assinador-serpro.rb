cask "assinador-serpro" do
  version "2-7-1"
  sha256 "11dc80202d25008d83e82a76e1cc34e6fa1678af9ff530c61819e7c2a7b526b5"

  url "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro/arquivos/assinador-serpro-#{version}-instalador.dmg"
  name "assinador-serpro"
  desc "Validate and sign documents using digital certificates"
  homepage "https://www.serpro.gov.br/links-fixos-superiores/assinador-digital/assinador-serpro"

  depends_on macos: ">= :sierra"

  app "Assinador Serpro.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/JavaAppLauncher_CA7F3306-C6D5-5B86-B49A-3E44E5E124DB.plist",
    "~/Library/Preferences/org.demoiselle.signer.serpro.desktop.Main.plist",
  ]
end
