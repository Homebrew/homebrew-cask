cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.0"
  sha256 arm:   "f362fd4254229e9e2f12cea4188a7493ec9307cd58bf905cdbe86732ac66400e",
         intel: "a1a5c75d8902af299d532c48676d1fb5e6ccd7d8adfbbf30b1107ad1ba1ee6f8"

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
