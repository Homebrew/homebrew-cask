cask "calmly-writer" do
  arch arm: "arm64", intel: "x64"

  version "2.0.59"

  on_arm do
    sha256 "f96af9da430bc222b7e389e05e3af65b5064902e20d9608a11f55398d81c6867"

    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}-#{arch}.dmg"
  end
  on_intel do
    sha256 "7801e93a01320dd230b4862dda8dfc4bc905649219c8882f83eaae0e410b5df2"

    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}.dmg"
  end

  name "Calmly Writer"
  desc "Word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/#{arch}/download.php"
    regex(/Calmly(?:\s+|%20|[._-])?Writer[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Calmly Writer.app"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end
