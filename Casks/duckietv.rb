cask "duckietv" do
  version "1.1.5"
  sha256 "9c2f72c011cd477071e51238d5bfa0c202babdd263c1e4ea6b3d4e4605da2907"

  # github.com/SchizoDuckie/DuckieTV/ was verified as official when first introduced to the cask
  url "https://github.com/SchizoDuckie/DuckieTV/releases/download/#{version}/DuckieTV-#{version}-OSX-x64.pkg"
  appcast "https://github.com/SchizoDuckie/DuckieTV/releases.atom"
  name "duckieTV"
  desc "Tool to track TV shows with semi-automagic torrent integration"
  homepage "https://schizoduckie.github.io/DuckieTV/"

  pkg "DuckieTV-#{version}-OSX-x64.pkg"

  uninstall pkgutil: "tv.duckie.base.pkg",
            delete:  [
              "/Applicatons/duckieTV.app",
              "~/Library/Application Support/DuckieTV-Standalone",
            ]
end
