# typed: false
# frozen_string_literal: true

cask "attachecase" do
  version "4.1.9"
  sha256 "fdcd7949b6b2f97ae3f9111097f39c8b35cf76746908d6771565a3b9a37630ef"

  url "https://hibara.org/software/attachecase/download/?f=AtcMac#{version.no_dots}.zip", user_agent: :fake
  name "AttacheCase"
  desc "Simple utility for encrypting/decrypting files and directories"
  homepage "https://hibara.org/software/attachecase/"

  depends_on macos: ">= :mojave"

  app "AttacheCase.app"
end
