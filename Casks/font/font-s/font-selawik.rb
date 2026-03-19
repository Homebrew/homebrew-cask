cask "font-selawik" do
  version "1.01"
  sha256 "3f62c51e05e3b5a1e6241cf92a371f0be2ea1183aa87b30718bbd40832a8d423"

  url "https://github.com/microsoft/Selawik/releases/download/#{version}/Selawik_Release.zip"
  name "Microsoft Selawik"
  desc "Open-source sans-serif font family, metrics-compatible replacement for Segoe UI"
  homepage "https://github.com/microsoft/Selawik"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "selawk.ttf"
  font "selawkb.ttf"
  font "selawkl.ttf"
  font "selawksb.ttf"
  font "selawksl.ttf"
end
