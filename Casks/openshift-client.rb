cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.12"
  sha256 arm:   "c831dda8967870212bb0ceef491d261bdab7fb44418a2c484071f3fa993a05aa",
         intel: "85b64e3238e5676cba65abeb3ec7ed467a64bdb91c606ac2f64bb5d153d7f27e"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
