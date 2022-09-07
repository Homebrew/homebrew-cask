# typed: false
# frozen_string_literal: true

cask "beast2" do
  version "2.7.0"
  sha256 "656fee774e82ddbdf630b8787cf90912ab2bca8c1972bbe83ac1305fa3b608cd"

  url "https://github.com/CompEvol/beast2/releases/download/v#{version}/BEAST.v#{version}.Mac.dmg", verified: "https://github.com/CompEvol/beast2"
  name "BEAST2"
  desc "Bayesian evolutionary analysis by sampling trees"
  homepage "https://www.beast2.org/"

  suite "BEAST 2.7.0"
end
