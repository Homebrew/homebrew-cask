cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.3"
  sha256 arm:   "05eb47f074bda76767b2d628160a0315b90d1da8799fc93409efa44da78f5d21",
         intel: "7ed660671f39c0d6751fba275f0dca55cbad8d80052fd33d18806fd39019d15f"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "oc"

  zap trash: "~/.kube/config"
end
