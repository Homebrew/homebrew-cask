cask "kui" do
  version "10.5.2"

  if Hardware::CPU.intel?
    url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2",
        verified: "github.com/kubernetes-sigs/kui/"
    sha256 "3e55829a1cd1deed292c3129fc29f536a961f41353a638faf2f72b365854d2ec"
    app "Kui-darwin-x64/Kui.app"
  else
    url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-arm64.tar.bz2",
        verified: "github.com/kubernetes-sigs/kui/"
    sha256 "a21bc0685e7c18f428afaca4b6c03ff50abe240d5fdc06272b3642525a85665b"
    app "Kui-darwin-arm64/Kui.app"
  end

  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://kui.tools/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
