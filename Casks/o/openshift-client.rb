cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.6"
  sha256 arm:   "2c4cc7803067bbf6e4503c05e2382bf4b924ff0ac4334e90175632d72cfe140a",
         intel: "6e2fafe32d4d765e60edcf152cdcee7e992affa183e980dbf882a744082b511b"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  disable! date: "2026-09-01", because: :unsigned

  binary "oc"

  zap trash: "~/.kube/config"
end
