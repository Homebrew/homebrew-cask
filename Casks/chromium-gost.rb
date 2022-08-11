cask "chromium-gost" do
  version "103.0.5060.134"
  sha256 "f7bcca0f328fae408773700dae023aa036e909d48022157b0c6627b860a1ea78"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-amd64.tar.bz2"
  name "Chromium-Gost"
  desc "Open source web browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  app "Chromium-Gost.app"
end
