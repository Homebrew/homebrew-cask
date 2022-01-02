cask "jtool2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url "http://newosxbook.com/tools/jtool2.tgz"
  name "jtool2"
  desc "Tool to help out reverse engineering, security researchers, and tweak developers"
  homepage "http://newosxbook.com/tools/jtool.html"

  livecheck do
    skip "No version information available"
  end

  binary "jtool2"
end
