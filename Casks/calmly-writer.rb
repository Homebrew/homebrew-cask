cask "calmly-writer" do
  version "2.0.25"
  sha256 :no_check

  url "https://www.calmlywriter.com/releases/arm64/Calmly%20Writer-#{version}.pkg"
  name "Calmly Writer"
  desc "Calmly Writer is an editor designed to focus on what you want to tell, with a simple, unoptrusive and ease-to-use user interface."
  homepage "https://calmlywriter.com"

  pkg "Calmly Writer-#{version}.pkg"

  uninstall pkgutil: "Calmly Writer-#{version}.pkg"
end
