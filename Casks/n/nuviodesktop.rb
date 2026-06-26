cask "nuviodesktop" do
  arch arm: "arm64", intel: "x86_64"

version "0.1.9-alpha"
sha256 arm: "6cbdc734454c2171a02433c82b1b121ddaf6bd62b537d56e94b932d47c1b8dae",
  intel: "50bc1a42e0e7c851eedc96de92e934582528e1290ea25f87f18c6b12de6dc0f5"

url "https://github.com/NuvioMedia/NuvioDesktop/releases/download/#{version}/Nuvio-macOS-#{arch}-#{version}.dmg"
name "NuvioDesktop"
desc "Uygulamanın ne işe yaradığını anlatan İngilizce kısa bir açıklama"
homepage "https://github.com/NuvioMedia/NuvioDesktop"

app "NuvioDesktop.app"
end
