cask "theiaide" do
  version "1.45.0"
  sha256 "51f15dc877b70f619fba62e0ac971a0f1ffda62491e8b2ca908efade46dedd93"

  url "https://download.eclipse.org/theia/ide/#{version}/macos/TheiaIDE.dmg",
      verified: "download.eclipse.org/theia/ide/"
  name "TheiaIDE"
  desc "IDE framework"
  homepage "https://theia-ide.org/"

  livecheck do
    url "https://download.eclipse.org/theia/ide/latest/macos/"
    regex(/href=.*?TheiaIDE[._-]v?(\d+(?:\.\d+)+)(?:-mac)?\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

  app "TheiaIDE.app"

  zap trash: "~/.theia-ide"
end
