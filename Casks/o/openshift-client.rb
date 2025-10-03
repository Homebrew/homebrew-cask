cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.15"
  sha256 arm:   "f13755130aafc16cd169e65b7dac22b0c5d54011e1badda9445bce86d950be24",
         intel: "7c89d24e26624c7ce31e60de97aa9472fa3f4bb40e0af3f64b037db2531f8489"

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
