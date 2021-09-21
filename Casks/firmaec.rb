cask "firmaec" do
  version "2.10.0"
  sha256 :no_check

  url "https://www.firmadigital.gob.ec/firmaec/FirmaEC.zip"
  name "FirmaEC"
  desc "Firma electrónica en Ecuador"
  homepage "https://www.firmadigital.gob.ec/"

  livecheck do
    url "https://www.firmadigital.gob.ec/registro-de-cambios-de-firmaecchangelog/"
    regex(/Versión (\d+(?:\.\d+)+) \(/i)
  end

  container type: :zip

  app "FirmaEC/FirmaEC.app"

  zap trash: [
    "~/firmadigital.log",
    "~/firmadigital.log.lck",
    "~/firmadigital.properties",
  ]
end
