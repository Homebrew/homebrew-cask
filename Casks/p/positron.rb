cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.02.1-5"
  sha256 arm:   "2070a450c4d24b0769aa872cffc3e92537ca87b3997fc6c4150e615c3d03bc50",
         intel: "395db2e4b28c40968ff4b7c6936ac6bc65d08d63483f62370d40adcebf6127d7"

  url "https://cdn.posit.co/positron/releases/mac/#{arch}/Positron-darwin-#{version}-#{arch}.zip"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/releases/mac/#{arch}/releases.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
