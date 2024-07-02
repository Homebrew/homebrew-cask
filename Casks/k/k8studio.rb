# typed: true
# frozen_string_literal: true

cask "k8studio" do
  arch arm: "-arm64", intel: ""
  version "1.0.11-beta"
  sha256 arm:   "77f5e0b4fb2d74070ef9b3a8d55e11fed326e9a4941ae855272a412983bd843b",
         intel: "c78651df1b92abd9a55dfb4c89129d046b04d19cda634759af204c59b102373e"

  url "https://github.com/guiqui/k8Studio/releases/download/v#{version}/K8Studio-#{version}#{arch}.dmg",verified: "github.com/guiqui/k8Studio/"
  name "K8studio"
  desc "Kubernetes GUI"
  homepage "https://k8studio.io/"

  app "K8Studio.app"
end
