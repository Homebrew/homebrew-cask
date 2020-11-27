cask "qit" do
  version :latest
  sha256 :no_check

  url "http://cabeen.io/download/qit-latest-mac.zip"
  name "qit"
  desc "Visualization, exploration, and analysis of neuroimaging datasets"
  homepage "http://cabeen.io/qitwiki"

  suite "qit-latest-mac", target: "qit"
end
