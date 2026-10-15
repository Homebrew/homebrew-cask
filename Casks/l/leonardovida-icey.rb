cask "leonardovida-icey" do
  version "0.11.12"
  sha256 "sha256:07af133adfb4ba32f9f4d544e08413edcfcb61b7fccd585038aabdd829806d4d"

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
