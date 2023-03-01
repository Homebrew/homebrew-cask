cask "fuzzyclock" do
  version "2.3.0"
  sha256 :no_check

  url "https://mschmidt.me/macOS/FuzzyClock.zip"
  name "FuzzyClock"
  homepage "https://mschmidt.me/macos.html"

  livecheck do
    url :homepage
    regex(/version\s+(\d+(?:\.\d+)+)/i)
  end

  app "FuzzyClock.app"
end
