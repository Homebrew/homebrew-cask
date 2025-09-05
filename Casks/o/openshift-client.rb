cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.11"
  sha256 arm:   "ad9c932223aa9fc1af07d0e755e829d5f513d4c7bda97aca585b4d24dbbe0213",
         intel: "ed0d0eea58581db428616089f55c59b37984c03f1da338154dc02b28ce54b25c"

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
