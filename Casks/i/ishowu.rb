cask "ishowu" do
  version "1.94.5,2751"
  sha256 :no_check

  url "https://www.shinywhitebox.com/store/file.php?p=1"
  name "iShowU"
  desc "Screen recorder"
  homepage "https://www.shinywhitebox.com/ishowu"

  disable! date: "2024-07-14", because: "is 32-bit only"

  app "iShowU.app"
end
