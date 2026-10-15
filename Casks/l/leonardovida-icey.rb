cask "leonardovida-icey" do
  version "0.11.12"
  sha256 "c88046e7211076748c10a4c518c5b3e9d9c1e542f1b24f8f14e21c7e234cdfce"

  url "https://github.com/leonardovida/icey/releases/download/v#{version}-icey.1/Icey-#{version}-icey.1.zip"
  name "Icey"
  desc "Menu bar manager"
  homepage "https://leonardovida.github.io/icey/"

  auto_updates true
  conflicts_with cask: "jordanbaird-ice"
  conflicts_with cask: "jordanbaird-ice@beta"
  depends_on macos: :sonoma

  app "Icey.app"

  uninstall quit:       "com.jordanbaird.Ice",
            login_item: "Ice"
end
