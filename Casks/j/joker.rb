cask "joker" do
  version :latest
  sha256 :no_check

  url "https://newosxbook.com/tools/joker.tar"
  name "Joker iOS kernelcache handling utility"
  homepage "https://newosxbook.com/tools/joker.html"

  disable! date: "2024-12-16", because: :discontinued

  binary "joker.universal", target: "joker"
end
