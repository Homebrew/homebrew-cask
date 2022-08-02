cask "firmaec" do
  version "2.11.0"
  sha256 :no_check

  url "https://www.firmadigital.gob.ec/firmaec/FirmaEC.zip"
  name "FirmaEC"
  desc "Sign documents through digital certificates"
  homepage "https://www.firmadigital.gob.ec/"

  livecheck do
    url "https://www.firmadigital.gob.ec/registro-de-cambios-de-firmaecchangelog/"
    regex(/Versión\s*(\d+(?:\.\d+)+)/i)
  end

  app "FirmaEC/FirmaEC.app"
  app "FirmaEC/FirmaECTransversal.app"

  zap trash: [
    "~/firmadigital.log",
    "~/firmadigital.log.lck",
    "~/firmadigital.properties",
  ]
end
