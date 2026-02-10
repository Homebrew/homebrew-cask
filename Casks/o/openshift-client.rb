cask "openshift-client" do
  arch arm: "-arm64"

  version "4.21.1"
  sha256 arm:   "c5ffcfb121d055e4394199d1bb4c5dafe8e66e26868b2d94119483b472f8285d",
         intel: "09e51e2f6ad3e3c0ede33d671edebef37edb00c65da86e45fafdb5178b36346e"

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
