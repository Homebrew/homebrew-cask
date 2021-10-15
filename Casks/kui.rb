cask "kui" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "10.7.6"

  url "https://github.com/kubernetes-sigs/kui/releases/download/v#{version}/Kui-darwin-#{arch}.tar.bz2"
  if Hardware::CPU.intel?
    sha256 "b481204b3005d45901c450a35ad4089267c979c0d71001bd944695839151009a"
  else
    sha256 "99f3393eea13257f458c6cb2ffc5655518cb38607ccbd854b0d46991f6d8e618"
  end

  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://github.com/kubernetes-sigs/kui"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Kui-darwin-#{arch}/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"

  zap trash: "~/Library/Application Support/Kui"
end
