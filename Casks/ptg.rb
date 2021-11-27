cask "ptg" do
  version "0.0.2"
  sha256 "a226304c68e540f66e8e01a3781dd09be80059bf48bd024656b4fb348f4bccc8"

  url "https://github.com/crossoverJie/ptg/releases/download/#{version}/ptg-mac-gui.tar"
  name "ptg"
  desc "Performance testing tool (Go), It is also a GUI gRPC client"
  homepage "https://github.com/crossoverJie/ptg"

  app "ptg.app"
end
