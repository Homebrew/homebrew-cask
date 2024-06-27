cask "jtool2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.2"
  sha256 :no_check

  url "https://newosxbook.com/tools/jtool2.tgz"
  name "jtool2"
  desc "Tool to help out reverse engineering, security researchers, and tweak developers"
  homepage "https://newosxbook.com/tools/jtool.html"

  deprecate! date: "2024-06-27", because: :discontinued

  binary "jtool2"
end
