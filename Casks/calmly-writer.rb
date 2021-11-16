cask "calmly-writer" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.36"

  if Hardware::CPU.intel?
    sha256 "08d57fdedee42b67aca3caae9815a867736c45960dfde95b191b76cfcd460950"
  else
    sha256 "3cc5240a4c43aad475a0a995eaed21ec8d72db07f886ab0cd132505f26524d8f"
  end

  url "https://www.calmlywriter.com/releases/#{arch}/Calmly%20Writer-#{version}.pkg"
  name "Calmly Writer"
  desc "Word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/#{arch}/download.php"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  pkg "Calmly Writer-#{version}.pkg"

  uninstall pkgutil: "calmlywriter"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end
