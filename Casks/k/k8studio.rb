# typed: true
# frozen_string_literal: true

cask "k8studio" do
  version "1.0.11"

  on_arm do
    sha256 "77f5e0b4fb2d74070ef9b3a8d55e11fed326e9a4941ae855272a412983bd843b"

    url "https://github.com/guiqui/k8Studio/releases/download/v1.0.11-beta/K8Studio-1.0.11-beta-arm64.dmg"
  end
  on_intel do
    sha256 "c78651df1b92abd9a55dfb4c89129d046b04d19cda634759af204c59b102373e"

    url "https://github.com/guiqui/k8Studio/releases/download/v1.0.11-beta/K8Studio-1.0.11-beta.dmg"
  end

  name "K8studio"
  desc "Kubernetes GUI"
  homepage "https://k8studio.io/"

  app "K8Studio.app"

  caveats do
    <<~EOS
      K8Studio has been installed. You can run it with:
        open -a K8Studio
    EOS
  end
end
