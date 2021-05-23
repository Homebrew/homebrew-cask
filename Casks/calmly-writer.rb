cask "calmly-writer" do
  version "2.0.28"

  if Hardware::CPU.intel?
    sha256 "cf563016161bfc2237227dc13b2861a0a6d15b0d2e4a78e77c19335a1d8bec9c"

    url "https://www.calmlywriter.com/releases/x64/Calmly%20Writer-#{version}.pkg"
  else
    sha256 "22f8aa3209d37f4ceb3d8d673cb45030c09cfee4b771b21ca4f9b7ea8f72dc99"

    url "https://www.calmlywriter.com/releases/arm64/Calmly%20Writer-#{version}.pkg"
  end

  name "Calmly Writer"
  desc "Simple word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/x64/download.php"
    strategy :header_match
  end

  pkg "Calmly Writer-#{version}.pkg"

  uninstall pkgutil: "calmlywriter"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end
