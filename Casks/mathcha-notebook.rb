cask "mathcha-notebook" do
  version "1.0.423"
  sha256 :no_check

  url "https://notebook-downloads.mathcha.io/public/Mathcha%20Notebook-latest-mac.zip"
  name "Mathcha Notebook"
  desc "Mathematics editor"
  homepage "https://www.mathcha.io/"

  livecheck do
    url "https://notebook-downloads.mathcha.io/public/latest-mac.yml"
    regex(%r{Mathcha Notebook-(\d+(?:\.\d+)+)-mac.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}" }
    end
  end

  app "Mathcha Notebook.app"

  zap trash: [
    "~/Library/Application Support/Mathcha Notebook",
    "~/Library/Logs/Mathcha Notebook",
    "~/Library/Preferences/mathcha.com.mathnotebook.plist",
    "~/Library/Saved Application State/mathcha.com.mathnotebook.savedState",
  ]
end
