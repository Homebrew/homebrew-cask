cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.13"
  sha256 arm:   "e094399fd6c3ec505ba6942c21b3a83b3134458d1a8ac61ce843f370820ca77e",
         intel: "9c8f74af8d23dedebd14da985ac24503eafd14e0f13f45fd69615804c19c647b"

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
