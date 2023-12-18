cask "joker" do
  version :latest
  sha256 :no_check

  url "http://newosxbook.com/tools/joker.tar"
  name "Joker iOS kernelcache handling utility"
  homepage "http://newosxbook.com/tools/joker.html"

  deprecate! date: "2023-12-17", because: :discontinued

  binary "joker.universal", target: "joker"
end
