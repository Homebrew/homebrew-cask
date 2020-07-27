cask "datazenit" do
  version "1.1.0"
  sha256 "7d6e185e5c3d3db27096719bf2c5d5d1efccc2c717f2355acbaee74531b82aa9"

  # github.com/datazenit/datazenit-releases/ was verified as official when first introduced to the cask
  url "https://github.com/datazenit/datazenit-releases/releases/download/v#{version}/mac.tar.gz"
  appcast "https://github.com/datazenit/datazenit-releases/releases.atom"
  name "Datazenit"
  homepage "https://datazenit.com/"

  app "Datazenit.app"
end
